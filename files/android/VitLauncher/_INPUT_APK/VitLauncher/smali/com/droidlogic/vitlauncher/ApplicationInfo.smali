.class Lcom/droidlogic/vitlauncher/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"


# instance fields
.field componentName:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field intent:Landroid/content/Intent;

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method
