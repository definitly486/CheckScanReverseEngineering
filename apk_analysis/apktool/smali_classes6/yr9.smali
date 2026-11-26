.class public final synthetic Lyr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mu5;


# instance fields
.field public final synthetic a:Lyads/cq;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lyads/cq;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyr9;->a:Lyads/cq;

    iput p2, p0, Lyr9;->b:I

    iput p3, p0, Lyr9;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget v0, p0, Lyr9;->b:I

    iget v1, p0, Lyr9;->c:I

    iget-object p0, p0, Lyr9;->a:Lyads/cq;

    invoke-virtual {p0, v0, v1, p1}, Lyads/cq;->a(III)I

    move-result p0

    return p0
.end method
