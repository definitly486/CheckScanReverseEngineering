.class public final Lcom/my/target/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Let9;

.field public final synthetic b:Lcom/my/target/x;


# direct methods
.method public constructor <init>(Lcom/my/target/x;Let9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/x$a;->b:Lcom/my/target/x;

    iput-object p2, p0, Lcom/my/target/x$a;->a:Let9;

    return-void
.end method


# virtual methods
.method public final a(Ll6a;Lm95;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/x$a;->b:Lcom/my/target/x;

    iget-object v1, v0, Lcom/my/target/t;->d:Ll95;

    if-eq v1, p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "MediationInterstitialAdEngine$AdapterListener: No data from "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/x$a;->a:Let9;

    iget-object v1, p0, Let9;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ad network - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/my/target/t;->a(Let9;Z)V

    return-void
.end method
