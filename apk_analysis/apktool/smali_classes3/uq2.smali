.class public abstract Luq2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luq2$a;,
        Luq2$b;,
        Luq2$e;,
        Luq2$c;,
        Luq2$d;,
        Luq2$f;,
        Luq2$g;
    }
.end annotation


# static fields
.field public static final a:Luq2$e;

.field public static final b:Luq2$c;

.field public static final c:Luq2$d;

.field public static final d:Luq2$f;

.field public static final e:Luq2$d;

.field public static final f:Lqz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqz5<",
            "Luq2;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Luq2$a;

    invoke-direct {v0}, Luq2;-><init>()V

    new-instance v0, Luq2$b;

    invoke-direct {v0}, Luq2;-><init>()V

    new-instance v0, Luq2$e;

    invoke-direct {v0}, Luq2;-><init>()V

    sput-object v0, Luq2;->a:Luq2$e;

    new-instance v0, Luq2$c;

    invoke-direct {v0}, Luq2;-><init>()V

    sput-object v0, Luq2;->b:Luq2$c;

    new-instance v0, Luq2$d;

    invoke-direct {v0}, Luq2;-><init>()V

    sput-object v0, Luq2;->c:Luq2$d;

    new-instance v1, Luq2$f;

    invoke-direct {v1}, Luq2;-><init>()V

    sput-object v1, Luq2;->d:Luq2$f;

    sput-object v0, Luq2;->e:Luq2$d;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v0, v1}, Lqz5;->a(Ljava/lang/Object;Ljava/lang/String;)Lqz5;

    move-result-object v0

    sput-object v0, Luq2;->f:Lqz5;

    const/4 v0, 0x1

    sput-boolean v0, Luq2;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Luq2$g;
.end method

.method public abstract b(IIII)F
.end method
