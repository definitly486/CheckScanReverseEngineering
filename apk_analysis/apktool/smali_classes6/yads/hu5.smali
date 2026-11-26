.class public final Lyads/hu5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/HashSet;

.field public static final d:Ljava/util/HashSet;


# instance fields
.field public final a:Landroid/location/LocationManager;

.field public final b:Lyads/bu4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "gps"

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lyads/hu5;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const-string v2, "passive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lyads/hu5;->d:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    new-instance v0, Lyads/bu4;

    invoke-direct {v0, p1}, Lyads/bu4;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/hu5;->a:Landroid/location/LocationManager;

    iput-object v0, p0, Lyads/hu5;->b:Lyads/bu4;

    return-void
.end method
