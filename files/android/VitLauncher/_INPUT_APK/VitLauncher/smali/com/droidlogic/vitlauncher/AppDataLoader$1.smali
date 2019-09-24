.class Lcom/droidlogic/vitlauncher/AppDataLoader$1;
.super Ljava/lang/Object;
.source "AppDataLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidlogic/vitlauncher/AppDataLoader;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidlogic/vitlauncher/AppDataLoader;


# direct methods
.method constructor <init>(Lcom/droidlogic/vitlauncher/AppDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/AppDataLoader$1;->this$0:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader$1;->this$0:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->-get0(Lcom/droidlogic/vitlauncher/AppDataLoader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader$1;->this$0:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->-wrap0(Lcom/droidlogic/vitlauncher/AppDataLoader;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader$1;->this$0:Lcom/droidlogic/vitlauncher/AppDataLoader;

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->-wrap1(Lcom/droidlogic/vitlauncher/AppDataLoader;)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader$1;->this$0:Lcom/droidlogic/vitlauncher/AppDataLoader;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/droidlogic/vitlauncher/AppDataLoader;->-set0(Lcom/droidlogic/vitlauncher/AppDataLoader;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
