.class public final Lgl2$k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgl2$k;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lgl2$k;


# direct methods
.method public constructor <init>(Lgl2$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl2$k$b;->b:Lgl2$k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lgl2$k$b;->b:Lgl2$k;

    iget-object p0, p0, Lgl2$k;->a:Ldm1;

    invoke-interface {p0}, Lj98;->d()V

    return-void
.end method
