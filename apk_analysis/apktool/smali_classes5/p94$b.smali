.class public final Lp94$b;
.super Lu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lp94;


# direct methods
.method public constructor <init>(Lp94;)V
    .locals 1

    iput-object p1, p0, Lp94$b;->c:Lp94;

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu1;-><init>(IB)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 2

    iget-object p0, p0, Lp94$b;->c:Lp94;

    iget-object v0, p0, Lp94;->d:Lez4$p$a;

    iget-object v0, v0, Lez4$p$a;->b:Lez4$p;

    iget-object v0, v0, Lez4$p;->j:Lez4;

    iget-object v0, v0, Lez4;->Y:Lez4$i;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lu1;->o(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object p0, p0, Lp94$b;->c:Lp94;

    iget-object v0, p0, Lp94;->d:Lez4$p$a;

    iget-object v0, v0, Lez4$p$a;->b:Lez4$p;

    iget-object v0, v0, Lez4$p;->j:Lez4;

    iget-object v0, v0, Lez4;->Y:Lez4$i;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lu1;->o(Ljava/lang/Object;Z)V

    return-void
.end method
