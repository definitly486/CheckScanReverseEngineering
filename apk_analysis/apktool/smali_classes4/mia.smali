.class public final Lmia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/core/ui/views/promo/style2/cards/a$a;


# instance fields
.field public final a:Lcom/my/target/core/ui/views/promo/style2/cards/b;

.field public final b:Lcom/my/target/c3;

.field public final c:[Z

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/my/target/core/ui/views/promo/style2/cards/b;Ljava/util/ArrayList;Lcom/my/target/c3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmia;->a:Lcom/my/target/core/ui/views/promo/style2/cards/b;

    iput-object p3, p0, Lmia;->b:Lcom/my/target/c3;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lmia;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lmia;->c:[Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lmia;->d:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/my/target/core/ui/views/promo/style2/cards/a;->setListener(Lcom/my/target/core/ui/views/promo/style2/cards/a$a;)V

    return-void
.end method
