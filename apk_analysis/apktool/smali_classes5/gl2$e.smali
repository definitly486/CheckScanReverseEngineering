.class public final Lgl2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgl2;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lgl2;


# direct methods
.method public constructor <init>(Lgl2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl2$e;->c:Lgl2;

    iput p2, p0, Lgl2$e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgl2$e;->c:Lgl2;

    iget-object v0, v0, Lgl2;->e:Lcm1;

    iget p0, p0, Lgl2$e;->b:I

    invoke-interface {v0, p0}, Lcm1;->b(I)V

    return-void
.end method
