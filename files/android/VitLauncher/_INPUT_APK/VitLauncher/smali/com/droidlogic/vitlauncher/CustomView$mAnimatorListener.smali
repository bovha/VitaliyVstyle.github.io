.class Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;
.super Ljava/lang/Object;
.source "CustomView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidlogic/vitlauncher/CustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidlogic/vitlauncher/CustomView;


# direct methods
.method private constructor <init>(Lcom/droidlogic/vitlauncher/CustomView;)V
    .locals 0

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;->this$0:Lcom/droidlogic/vitlauncher/CustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/droidlogic/vitlauncher/CustomView;Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;-><init>(Lcom/droidlogic/vitlauncher/CustomView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/CustomView;->-set0(Z)Z

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;->this$0:Lcom/droidlogic/vitlauncher/CustomView;

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/CustomView;->-get0(Lcom/droidlogic/vitlauncher/CustomView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;->this$0:Lcom/droidlogic/vitlauncher/CustomView;

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/CustomView;->-get1(Lcom/droidlogic/vitlauncher/CustomView;)Lcom/droidlogic/vitlauncher/CustomView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;->this$0:Lcom/droidlogic/vitlauncher/CustomView;

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/CustomView;->-get0(Lcom/droidlogic/vitlauncher/CustomView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getMainView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/CustomView$mAnimatorListener;->this$0:Lcom/droidlogic/vitlauncher/CustomView;

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/CustomView;->-get0(Lcom/droidlogic/vitlauncher/CustomView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->recoverFromCustom()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
