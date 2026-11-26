.class public final Lcom/my/target/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/my/target/w;


# direct methods
.method public constructor <init>(Lcom/my/target/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/w$a;->b:Lcom/my/target/w;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/w$a;->b:Lcom/my/target/w;

    iget-object p1, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    iget-object p0, p0, Lcom/my/target/w;->m:Lwv9;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/my/target/t1$a;->e(Lao9;)V

    :cond_0
    return-void
.end method
