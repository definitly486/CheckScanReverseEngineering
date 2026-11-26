.class public final synthetic Lls9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/y1$a;


# instance fields
.field public final synthetic b:Lcom/my/target/d2;

.field public final synthetic c:Lcom/my/target/d2$b;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/d2;Lcom/my/target/d2$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lls9;->b:Lcom/my/target/d2;

    iput-object p2, p0, Lls9;->c:Lcom/my/target/d2$b;

    return-void
.end method


# virtual methods
.method public final a(Lfo9;ILpfa;Landroid/view/View;)V
    .locals 0

    sget p4, Lcom/my/target/d2;->m:I

    iget-object p4, p0, Lls9;->c:Lcom/my/target/d2$b;

    if-eqz p4, :cond_0

    check-cast p4, Lcom/my/target/z1;

    iget-object p0, p0, Lls9;->b:Lcom/my/target/d2;

    invoke-virtual {p4, p1, p2, p3, p0}, Lcom/my/target/z1;->g(Lfo9;ILpfa;Landroid/view/View;)V

    :cond_0
    return-void
.end method
