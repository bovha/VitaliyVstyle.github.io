.class Lcom/droidlogic/vitlauncher/Launcher$4;
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

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/Launcher$4;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher$4;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/Launcher;->-wrap3(Lcom/droidlogic/vitlauncher/Launcher;)V

    :cond_1
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher$4;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/Launcher;->-wrap3(Lcom/droidlogic/vitlauncher/Launcher;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher$4;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-static {v1, p2}, Lcom/droidlogic/vitlauncher/Launcher;->-wrap7(Lcom/droidlogic/vitlauncher/Launcher;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher$4;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/Launcher;->-wrap4(Lcom/droidlogic/vitlauncher/Launcher;)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/Launcher$4;->this$0:Lcom/droidlogic/vitlauncher/Launcher;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/Launcher;->-wrap8(Lcom/droidlogic/vitlauncher/Launcher;)V

    goto :goto_0
.end method
