.class public final Lsp5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lj26<",
        "Lto5;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lto5;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lsp5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsp5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lsp5;->f:Lsp5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lj26;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lj26;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
