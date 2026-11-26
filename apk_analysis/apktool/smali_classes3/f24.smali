.class public final Lf24;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Lj29;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Landroid/graphics/ColorSpace;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Landroidx/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb53$b;

    sget-object v1, Lj29;->a:Lio5$a;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lf24;->a:Lb53$b;

    new-instance v0, Lb53$b;

    sget-object v1, Lsb9;->b:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lf24;->b:Lb53$b;

    new-instance v0, Lb53$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lf24;->c:Lb53$b;

    new-instance v0, Lb53$b;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lf24;->d:Lb53$b;

    new-instance v0, Lb53$b;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lf24;->e:Lb53$b;

    new-instance v0, Lb53$b;

    invoke-direct {v0, v2}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lf24;->f:Lb53$b;

    new-instance v0, Lb53$b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lf24;->g:Lb53$b;

    return-void
.end method

.method public static final a(Lzz5;)Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Lf24;->b:Lb53$b;

    invoke-static {p0, v0}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap$Config;

    return-object p0
.end method
