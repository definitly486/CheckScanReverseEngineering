.class public final synthetic Ldf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lkf1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lkf1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf1;->a:Lkf1;

    iput p2, p0, Ldf1;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ldf1;->a:Lkf1;

    invoke-virtual {v0}, Lkf1;->v()Lkf1$b;

    move-result-object v1

    invoke-virtual {v1}, Lkf1$b;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    iget p0, p0, Ldf1;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lkf1$b;->d(Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lkf1;->w(Lkf1;Lkf1$b;Lkf1$a;I)V

    return-void
.end method
