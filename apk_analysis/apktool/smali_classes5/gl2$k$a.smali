.class public final Lgl2$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgl2$k;->a(Lj98$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj98$a;

.field public final synthetic c:Lgl2$k;


# direct methods
.method public constructor <init>(Lgl2$k;Lj98$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl2$k$a;->c:Lgl2$k;

    iput-object p2, p0, Lgl2$k$a;->b:Lj98$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgl2$k$a;->c:Lgl2$k;

    iget-object v0, v0, Lgl2$k;->a:Ldm1;

    iget-object p0, p0, Lgl2$k$a;->b:Lj98$a;

    invoke-interface {v0, p0}, Lj98;->a(Lj98$a;)V

    return-void
.end method
