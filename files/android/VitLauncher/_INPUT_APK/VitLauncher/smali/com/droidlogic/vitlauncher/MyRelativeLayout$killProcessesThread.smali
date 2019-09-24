.class public Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;
.super Ljava/lang/Thread;
.source "MyRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidlogic/vitlauncher/MyRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "killProcessesThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidlogic/vitlauncher/MyRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;->this$0:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$killProcessesThread;->this$0:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->-wrap0(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
