.class public final Lwq3;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final i:Lip3;


# instance fields
.field public final a:Lpr;

.field public final b:Lar3;

.field public final c:Lm24;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo37<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Landroidx/collection/ArrayMap;

.field public final f:Lkz2;

.field public final g:Lyq3;

.field public h:Ls37;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lip3;

    invoke-direct {v0}, Lo29;-><init>()V

    sput-object v0, Lwq3;->i:Lip3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpr;Lq17;Lm24;Lrq3;Landroidx/collection/ArrayMap;Ljava/util/List;Lkz2;Lyq3;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lwq3;->a:Lpr;

    iput-object p4, p0, Lwq3;->c:Lm24;

    iput-object p7, p0, Lwq3;->d:Ljava/util/List;

    iput-object p6, p0, Lwq3;->e:Landroidx/collection/ArrayMap;

    iput-object p8, p0, Lwq3;->f:Lkz2;

    iput-object p9, p0, Lwq3;->g:Lyq3;

    new-instance p1, Lar3;

    invoke-direct {p1, p3}, Lar3;-><init>(Lbr3;)V

    iput-object p1, p0, Lwq3;->b:Lar3;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/Registry;
    .locals 0

    iget-object p0, p0, Lwq3;->b:Lar3;

    invoke-virtual {p0}, Lar3;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/Registry;

    return-object p0
.end method
