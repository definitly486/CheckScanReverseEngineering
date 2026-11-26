.class public final Lcom/my/target/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/my/target/w;


# direct methods
.method public constructor <init>(Lcom/my/target/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/w$b;->b:Lcom/my/target/w;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/w$b;->b:Lcom/my/target/w;

    iget-object p0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/g1$a;->e()V

    :cond_0
    return-void
.end method
