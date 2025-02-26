function sendMessage(res, status, success, message)
{
    res.status(status).send({success, message});
}

module.exports = {sendMessage};