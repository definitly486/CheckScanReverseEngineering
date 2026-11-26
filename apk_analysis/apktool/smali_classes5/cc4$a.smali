.class public final Lcc4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lcc4$a;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Lkr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc4$a;

    invoke-direct {v0}, Lcc4$a;-><init>()V

    sput-object v0, Lcc4$a;->b:Lcc4$a;

    const-string v0, "kotlinx.serialization.json.JsonArray"

    sput-object v0, Lcc4$a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Luc4;->a:Luc4;

    new-instance v1, Lkr;

    invoke-virtual {v0}, Luc4;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lkr4;-><init>(Lmp7;)V

    iput-object v1, p0, Lcc4$a;->a:Lkr;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcc4$a;->a:Lkr;

    invoke-virtual {p0, p1}, Lkr4;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final d(I)Lmp7;
    .locals 0

    iget-object p0, p0, Lcc4$a;->a:Lkr;

    invoke-virtual {p0, p1}, Lkr4;->d(I)Lmp7;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcc4$a;->a:Lkr;

    invoke-virtual {p0, p1}, Lkr4;->g(I)Ljava/util/List;

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public final getKind()Lsp7;
    .locals 0

    sget-object p0, Leb8$b;->a:Leb8$b;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcc4$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final i(I)Z
    .locals 0

    iget-object p0, p0, Lcc4$a;->a:Lkr;

    invoke-virtual {p0, p1}, Lkr4;->i(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
