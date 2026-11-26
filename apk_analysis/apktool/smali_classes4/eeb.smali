.class public final Leeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# static fields
.field public static final b:Lm00;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm00;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lm00;-><init>(I)V

    sput-object v0, Leeb;->b:Lm00;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Laeb;

    sget-object v1, Llgb;->c:Llgb;

    const/4 v1, 0x2

    new-array v1, v1, [Lefb;

    sget-object v2, Lb9b;->b:Lb9b;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Leeb;->b:Lm00;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Laeb;-><init>([Lefb;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Leeb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Leeb;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lld0;
    .locals 1

    iget-object p0, p0, Leeb;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvf4;

    invoke-virtual {v0}, Lvf4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw96;

    invoke-direct {v0, p0}, Lw96;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Ln46;

    invoke-direct {v0, p0}, Ln46;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Leeb;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public c()Z
    .locals 3

    iget-object p0, p0, Leeb;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvf4;

    invoke-virtual {p0}, Lvf4;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1
.end method
