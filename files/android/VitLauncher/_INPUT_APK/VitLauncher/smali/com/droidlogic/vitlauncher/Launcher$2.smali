.class Lcom/droidlogic/vitlauncher/Launcher$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/Launcher$2;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher$2;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/Launcher;->-wrap4(Lcom/droidlogic/vitlauncher/Launcher;)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher$2;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/Launcher;->-wrap8(Lcom/droidlogic/vitlauncher/Launcher;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
