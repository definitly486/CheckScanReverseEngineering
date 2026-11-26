.class public final synthetic Lmx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lox4$a;


# instance fields
.field public final synthetic a:Lox4;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lox4;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx4;->a:Lox4;

    iput p2, p0, Lmx4;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmx4;->a:Lox4;

    iget-object v1, v0, Lox4;->b:Lnw4;

    iget p0, p0, Lmx4;->b:F

    if-nez v1, :cond_0

    iget-object v1, v0, Lox4;->h:Ljava/util/ArrayList;

    new-instance v2, Lmx4;

    invoke-direct {v2, v0, p0}, Lmx4;-><init>(Lox4;F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v2, v1, Lnw4;->l:F

    iget v1, v1, Lnw4;->m:F

    invoke-static {v2, v1, p0}, Lhb5;->f(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lox4;->u(I)V

    return-void
.end method
