.class public final Lez4$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic b:Lez4;


# direct methods
.method public constructor <init>(Lez4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$j;->b:Lez4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lez4$j;->b:Lez4;

    iget-object v0, p0, Lez4;->y:Lez4$k;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lez4;->l(Z)V

    iget-object v0, p0, Lez4;->D:Lel2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lel2;->g(Lio/grpc/h$k;)V

    iget-object v1, p0, Lez4;->M:Lo91;

    sget-object v2, Ln91$a;->INFO:Ln91$a;

    const-string v3, "Entering IDLE state"

    invoke-virtual {v1, v2, v3}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    iget-object v1, p0, Lez4;->s:Lex1;

    sget-object v2, Lcx1;->IDLE:Lcx1;

    invoke-virtual {v1, v2}, Lex1;->a(Lcx1;)V

    iget-object v1, p0, Lez4;->Y:Lez4$i;

    iget-object v2, p0, Lez4;->C:Ljava/lang/Object;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v1, Lu1;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lez4;->g()V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
