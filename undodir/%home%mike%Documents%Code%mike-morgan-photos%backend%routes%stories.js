Vim�UnDo�  _T�<y���8ĉ���@?G=�wM�w��n��o�   U                                  `WU    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `�     �         ?       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�    �         ?       �         ?    5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             `WT     �               U   +const router = require("express").Router();   (const Post = require("../models/posts");   6const upload = require("../middlewares/upload-photo");       !//POST REQUEST- Create a new post   Frouter.post("/add-story", upload.single('photo'), async(req, res) => {     try{       let post = new Post();        post.title = req.body.title;   ,    post.description = req.body.description;   #    post.photo = req.file.location;       post.body = req.body.body;   $    post.snippet = req.body.snippet;           await post.save();              res.json({         status: true,   $      message: "Successfully saved."       });            } catch(err) {       res.status(500).json({         success: false,         message: err.message       });     }   });       //GET REQUEST- Get all posts   &router.get('/stories', (req, res) => {     Post.find()       .then((result) => {         res.send(result);       })       .catch((err) => {         console.log(err);       })   });       &//GET REQUEST- Get a single post by ID   *router.get('/stories/:id', (req, res) => {     let postId = req.params.id;     Post.findById(postId)     .then((result) => {       res.send(result);     })     .catch((err) => {       console.log(err);     })   })       //PUT REQUEST- Update a post   =router.put('/stories/update/:id', async (req, res, next) => {     try {       const id = req.params.id;       const updates = req.body;   :    await Post.findByIdAndUpdate(id, updates, {new:true});           res.json({         status: true,   &      message: "Successfully updated."       });          }catch(err) {       res.status(500).json({         success: false,         message: err.message       });     }        });        ,//DELETE request- Delete a single post by ID   4router.delete('/stories/delete/:id', (req, res) => {     let postId = req.params.id;      Post.findByIdAndDelete(postId)     .then((result) => {       res.send(result);     })     .catch((err) => {       console.log(err);     })   });   module.exports = router;5��