.class Lcom/droidlogic/vitlauncher/Launcher$1;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidlogic/vitlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidlogic/vitlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/droidlogic/vitlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/Launcher$1;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher$1;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/droidlogic/vitlauncher/Launcher;->resetShortcutScreen(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/Launcher$1;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher$1;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/Launcher;->-get0(Lcom/droidlogic/vitlauncher/Launcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidlogic/vitlauncher/Launcher;->resetShortcutScreen(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
