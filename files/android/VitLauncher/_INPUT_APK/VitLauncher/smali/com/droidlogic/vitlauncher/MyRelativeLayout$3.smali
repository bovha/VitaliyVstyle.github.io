.class Lcom/droidlogic/vitlauncher/MyRelativeLayout$3;
.super Ljava/lang/Object;
.source "MyRelativeLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidlogic/vitlauncher/MyRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
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

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$3;->this$0:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/MyRelativeLayout$3;->this$0:Lcom/droidlogic/vitlauncher/MyRelativeLayout;

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/MyRelativeLayout;->-get0(Lcom/droidlogic/vitlauncher/MyRelativeLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    sget-object v0, Lcom/droidlogic/vitlauncher/Launcher;->memory_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
