.class public final Lyads/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y00;


# instance fields
.field public final a:Lyads/n6;

.field public final b:I


# direct methods
.method public constructor <init>(Lyads/n6;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/p6;->a:Lyads/n6;

    iput p2, p0, Lyads/p6;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lyads/p6;->a:Lyads/n6;

    iget v0, v0, Lyads/n6;->b:I

    iget p0, p0, Lyads/p6;->b:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
