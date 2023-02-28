return {
    go = {
        {
            type = "delve",
            request = "launch",
            name = "Launch go-admin",
            program = "${file}",
            env = {
                APP_ENV = "dev",
                ETCD_ADDRESSES = "etcd.gs.com:2379",
            }
        }
    }
};
