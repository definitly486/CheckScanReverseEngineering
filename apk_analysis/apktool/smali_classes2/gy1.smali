.class public final Lgy1;
.super Lz;
.source "SourceFile"


# instance fields
.field public final g:Lps;


# direct methods
.method public constructor <init>(Lps;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLox1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p2, p0, Lz;->b:Landroidx/compose/ui/Alignment;

    iput-object p3, p0, Lz;->c:Landroidx/compose/ui/layout/ContentScale;

    iput p4, p0, Lz;->d:F

    iput-boolean p5, p0, Lz;->e:Z

    iput-object p6, p0, Lz;->f:Lox1;

    iput-object p1, p0, Lgy1;->g:Lps;

    return-void
.end method


# virtual methods
.method public final onAttach()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v0

    iget-object p0, p0, Lgy1;->g:Lps;

    iput-object v0, p0, Lps;->i:Ly22;

    invoke-virtual {p0}, Lps;->onRemembered()V

    return-void
.end method

.method public final onDetach()V
    .locals 0

    iget-object p0, p0, Lgy1;->g:Lps;

    invoke-virtual {p0}, Lps;->onForgotten()V

    return-void
.end method

.method public final onReset()V
    .locals 1

    iget-object p0, p0, Lgy1;->g:Lps;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lps;->c(Lps$a;)V

    return-void
.end method
