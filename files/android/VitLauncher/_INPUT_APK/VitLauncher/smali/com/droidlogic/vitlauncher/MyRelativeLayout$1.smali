.class Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;
.super Landroid/os/Handler;
.source "MyRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidlogic/vitlauncher/MyRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidlogic/vitlauncher/MyRelativeLayout;


# direct methods
.method constructor <init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;->this$0:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$1;->this$0:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->-wrap1(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V

    return-void
.end method
