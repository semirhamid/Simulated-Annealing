// Delay a tick to allow all asynchronous cleanup to finish
setTimeout(() => {
  process.exit(0);
}, 100);
