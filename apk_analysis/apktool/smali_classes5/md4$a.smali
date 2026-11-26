.class public final Lmd4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lmd4$a;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Ltq4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmd4$a;

    invoke-direct {v0}, Lmd4$a;-><init>()V

    sput-object v0, Lmd4$a;->b:Lmd4$a;

    const-string v0, "kotlinx.serialization.json.JsonObject"

    sput-object v0, Lmd4$a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lca8;->a:Lca8;

    sget-object v1, Luc4;->a:Luc4;

    new-instance v2, Ltq4;

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "kotlin.collections.LinkedHashMap"

    invoke-direct {v2, v3, v0, v1}, La05;-><init>(Ljava/lang/String;Lmp7;Lmp7;)V

    iput-object v2, p0, Lmd4$a;->a:Ltq4;

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

    iget-object p0, p0, Lmd4$a;->a:Ltq4;

    invoke-virtual {p0, p1}, La05;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final d(I)Lmp7;
    .locals 0

    iget-object p0, p0, Lmd4$a;->a:Ltq4;

    invoke-virtual {p0, p1}, La05;->d(I)Lmp7;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 0

    const/4 p0, 0x2

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

    iget-object p0, p0, Lmd4$a;->a:Ltq4;

    invoke-virtual {p0, p1}, La05;->g(I)Ljava/util/List;

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

    sget-object p0, Leb8$c;->a:Leb8$c;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    sget-object p0, Lmd4$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final i(I)Z
    .locals 0

    iget-object p0, p0, Lmd4$a;->a:Ltq4;

    invoke-virtual {p0, p1}, La05;->i(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
