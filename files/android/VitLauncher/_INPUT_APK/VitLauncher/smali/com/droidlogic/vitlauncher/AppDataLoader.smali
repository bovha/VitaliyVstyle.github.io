.class public Lcom/droidlogic/vitlauncher/AppDataLoader;
.super Ljava/lang/Object;
.source "AppDataLoader.java"


# instance fields
.field appShortCuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field homeShortCuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private isLoaded:Z

.field private list_homeShortcut:[Ljava/lang/String;

.field private list_localShortcut:[Ljava/lang/String;

.field private list_musicShortcut:[Ljava/lang/String;

.field private list_videoShortcut:[Ljava/lang/String;

.field localShortCuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mLock:Ljava/lang/Object;

.field musicShortCuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private str_homeShortcut:Ljava/lang/String;

.field private str_localShortcut:Ljava/lang/String;

.field private str_musicShortcut:Ljava/lang/String;

.field private str_videoShortcut:Ljava/lang/String;

.field videoShortCuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/droidlogic/vitlauncher/AppDataLoader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/droidlogic/vitlauncher/AppDataLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->isLoaded:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/droidlogic/vitlauncher/AppDataLoader;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->loadCustomApps()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/droidlogic/vitlauncher/AppDataLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->loadShortcutList()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->homeShortCuts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->videoShortCuts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->appShortCuts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->musicShortCuts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->localShortCuts:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->isLoaded:Z

    iput-object p1, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/droidlogic/vitlauncher/Launcher;

    invoke-virtual {v0}, Lcom/droidlogic/vitlauncher/Launcher;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private buildAddMap()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "intent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "icon"

    const v2, 0x7f020028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private buildShortcutMap(Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/content/ComponentName;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "intent"

    invoke-virtual {v0, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/droidlogic/vitlauncher/AppDataLoader;->parsePackageIcon(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v2, "component name"

    invoke-virtual {v0, v2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string/jumbo v2, "icon"

    iget-object v3, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static final getAppNameComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    new-instance v1, Lcom/droidlogic/vitlauncher/AppDataLoader$2;

    invoke-direct {v1, v0}, Lcom/droidlogic/vitlauncher/AppDataLoader$2;-><init>(Ljava/text/Collator;)V

    return-object v1
.end method

.method private loadCustomApps()[Ljava/lang/String;
    .locals 12

    const/high16 v9, 0x7f050000

    const/4 v5, 0x0

    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, "/data/data/com.droidlogic.vitlauncher/shortcut.cfg"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "/data/data/com.droidlogic.vitlauncher/shortcut.cfg"

    invoke-virtual {p0, v9, v8}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getShortcutFromDefault(ILjava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, "/data/data/com.droidlogic.vitlauncher/shortcut.cfg"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0xa

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    :goto_1
    const/4 v7, 0x0

    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string/jumbo v8, "Home_Shortcut:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "Home_Shortcut:"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_homeShortcut:Ljava/lang/String;

    iget-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_homeShortcut:Ljava/lang/String;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_homeShortcut:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_3
    :try_start_1
    const-string/jumbo v8, "AppDataLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_4
    return-object v5

    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    const-string/jumbo v8, "/data/data/com.droidlogic.vitlauncher/shortcut.cfg"

    const/high16 v9, 0x7f050000

    invoke-virtual {p0, v9, v8}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getShortcutFromDefault(ILjava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :cond_5
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f050000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string/jumbo v8, "/data/data/com.droidlogic.vitlauncher/shortcut.cfg"

    const/high16 v9, 0x7f050000

    invoke-virtual {p0, v9, v8}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getShortcutFromDefault(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v2

    goto/16 :goto_1

    :cond_6
    :try_start_6
    const-string/jumbo v8, "Video_Shortcut:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "Video_Shortcut:"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_videoShortcut:Ljava/lang/String;

    iget-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_videoShortcut:Ljava/lang/String;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_videoShortcut:[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_6
    throw v8

    :cond_8
    :try_start_8
    const-string/jumbo v8, "Music_shortcut:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v8, "Music_shortcut:"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_musicShortcut:Ljava/lang/String;

    iget-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_musicShortcut:Ljava/lang/String;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_musicShortcut:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v8, "Local_Shortcut:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "Local_Shortcut:"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_localShortcut:Ljava/lang/String;

    iget-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_localShortcut:Ljava/lang/String;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_localShortcut:[Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :cond_a
    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v3

    goto/16 :goto_4

    :catch_3
    move-exception v3

    goto/16 :goto_4

    :catch_4
    move-exception v3

    goto :goto_6

    :catchall_1
    move-exception v8

    move-object v1, v2

    goto :goto_5

    :catch_5
    move-exception v4

    move-object v1, v2

    goto/16 :goto_3
.end method

.method private loadShortcutList()V
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->homeShortCuts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->videoShortCuts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->musicShortCuts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->appShortCuts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->localShortCuts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/droidlogic/vitlauncher/AppDataLoader;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    if-eqz v1, :cond_a

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    new-instance v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;

    invoke-direct {v0}, Lcom/droidlogic/vitlauncher/ApplicationInfo;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/high16 v7, 0x10200000

    invoke-virtual {v0, v6, v7}, Lcom/droidlogic/vitlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    invoke-virtual {v4, v3}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.android.gallery3d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.example.win7.rawsurface"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_homeShortcut:[Ljava/lang/String;

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_homeShortcut:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_homeShortcut:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->homeShortCuts:Ljava/util/List;

    iget-object v7, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v9, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildShortcutMap(Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_videoShortcut:[Ljava/lang/String;

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_videoShortcut:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_videoShortcut:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->videoShortCuts:Ljava/util/List;

    iget-object v7, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v9, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildShortcutMap(Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_musicShortcut:[Ljava/lang/String;

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_musicShortcut:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_musicShortcut:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->musicShortCuts:Ljava/util/List;

    iget-object v7, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v9, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildShortcutMap(Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_localShortcut:[Ljava/lang/String;

    if-eqz v6, :cond_5

    const/4 v5, 0x0

    :goto_5
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_localShortcut:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->list_localShortcut:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->localShortCuts:Ljava/util/List;

    iget-object v7, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v9, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildShortcutMap(Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->appShortCuts:Ljava/util/List;

    iget-object v7, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v9, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildShortcutMap(Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/droidlogic/vitlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->homeShortCuts:Ljava/util/List;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildAddMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->videoShortCuts:Ljava/util/List;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildAddMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->musicShortCuts:Ljava/util/List;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildAddMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->localShortCuts:Ljava/util/List;

    invoke-direct {p0}, Lcom/droidlogic/vitlauncher/AppDataLoader;->buildAddMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parsePackageIcon(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "com.droidlogic.FileBrower"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f020011

    return v0

    :cond_a
    const/4 v0, -0x1

    return v0
.end method

.method private parseShortcutHead(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "Home_Shortcut:"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "Video_Shortcut:"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "Music_shortcut:"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "Local_Shortcut:"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getShortcutFromDefault(ILjava/lang/String;)V
    .locals 13

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    iget-object v11, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v0, v1

    :goto_2
    :try_start_3
    const-string/jumbo v10, "AppDataLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_4
    return-void

    :catch_1
    move-exception v6

    const-string/jumbo v10, "AppDataLoader"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_6
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v7, 0x0

    :goto_5
    :try_start_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_4

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_6
    :goto_7
    move-object v2, v3

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_6

    :catch_3
    move-exception v5

    goto :goto_7

    :catch_4
    move-exception v5

    goto :goto_3

    :catch_5
    move-exception v5

    goto :goto_4

    :catchall_0
    move-exception v10

    :goto_8
    if-eqz v0, :cond_7

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_8
    :goto_a
    throw v10

    :catch_6
    move-exception v5

    goto :goto_9

    :catch_7
    move-exception v5

    goto :goto_a

    :catchall_1
    move-exception v10

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v10

    move-object v2, v3

    move-object v0, v1

    goto :goto_8

    :catch_8
    move-exception v6

    goto/16 :goto_2

    :catch_9
    move-exception v6

    move-object v2, v3

    move-object v0, v1

    goto/16 :goto_2
.end method

.method public getShortcutList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->homeShortCuts:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->videoShortCuts:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->musicShortCuts:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :pswitch_4
    :try_start_3
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->appShortCuts:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    :pswitch_5
    :try_start_4
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->localShortCuts:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getShortcutString(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_homeShortcut:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_videoShortcut:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_musicShortcut:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :pswitch_4
    :try_start_3
    iget-object v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->str_localShortcut:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isDataLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->isLoaded:Z

    return v0
.end method

.method public saveShortcut(ILjava/lang/String;)V
    .locals 15

    iget-object v12, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string/jumbo v11, "/data/data/com.droidlogic.vitlauncher/shortcut.cfg"

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v10, 0x0

    :try_start_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v1, v2

    :goto_2
    :try_start_4
    const-string/jumbo v11, "AppDataLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :goto_4
    monitor-exit v12

    return-void

    :catch_1
    move-exception v6

    :try_start_7
    const-string/jumbo v11, "AppDataLoader"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_3
    :try_start_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "Home_Shortcut:"

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, "Video_Shortcut:"

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, "Music_shortcut:"

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, "Local_Shortcut:"

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v7, 0x0

    :goto_5
    :try_start_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_6

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p1}, Lcom/droidlogic/vitlauncher/AppDataLoader;->parseShortcutHead(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/droidlogic/vitlauncher/AppDataLoader;->parseShortcutHead(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v6

    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_7
    :goto_7
    if-eqz v4, :cond_8

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_8
    :goto_8
    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_4

    :catch_3
    move-exception v5

    goto :goto_7

    :catch_4
    move-exception v5

    goto :goto_8

    :catch_5
    move-exception v5

    goto/16 :goto_3

    :catch_6
    move-exception v5

    goto/16 :goto_4

    :catchall_1
    move-exception v11

    :goto_9
    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_9
    :goto_a
    if-eqz v3, :cond_a

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_a
    :goto_b
    :try_start_e
    throw v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catch_7
    move-exception v5

    goto :goto_a

    :catch_8
    move-exception v5

    goto :goto_b

    :catchall_2
    move-exception v11

    move-object v1, v2

    goto :goto_9

    :catchall_3
    move-exception v11

    move-object v3, v4

    move-object v1, v2

    goto :goto_9

    :catch_9
    move-exception v6

    goto/16 :goto_2
.end method

.method public update()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidlogic/vitlauncher/AppDataLoader;->isLoaded:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/droidlogic/vitlauncher/AppDataLoader$1;

    invoke-direct {v1, p0}, Lcom/droidlogic/vitlauncher/AppDataLoader$1;-><init>(Lcom/droidlogic/vitlauncher/AppDataLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
