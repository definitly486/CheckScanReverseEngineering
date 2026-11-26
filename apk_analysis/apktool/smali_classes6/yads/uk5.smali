.class public final Lyads/uk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wx3;


# instance fields
.field public final a:Lyads/vx3;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/vx3;

    invoke-direct {v0}, Lyads/vx3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/uk5;->a:Lyads/vx3;

    return-void
.end method


# virtual methods
.method public final a(II)Lyads/vx3;
    .locals 0

    iget-object p0, p0, Lyads/uk5;->a:Lyads/vx3;

    iput p1, p0, Lyads/vx3;->a:I

    iput p2, p0, Lyads/vx3;->b:I

    return-object p0
.end method
