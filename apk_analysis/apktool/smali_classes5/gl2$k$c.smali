.class public final Lgl2$k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgl2$k;->b(Lla5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lla5;

.field public final synthetic c:Lgl2$k;


# direct methods
.method public constructor <init>(Lgl2$k;Lla5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl2$k$c;->c:Lgl2$k;

    iput-object p2, p0, Lgl2$k$c;->b:Lla5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgl2$k$c;->c:Lgl2$k;

    iget-object v0, v0, Lgl2$k;->a:Ldm1;

    iget-object p0, p0, Lgl2$k$c;->b:Lla5;

    invoke-interface {v0, p0}, Ldm1;->b(Lla5;)V

    return-void
.end method
