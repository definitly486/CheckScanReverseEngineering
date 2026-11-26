.class public final Lyads/we5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ve5;

.field public final b:Lyads/mi6;


# direct methods
.method public constructor <init>(Lyads/q84;)V
    .locals 1

    new-instance v0, Lyads/ve5;

    invoke-direct {v0, p1}, Lyads/ve5;-><init>(Lyads/q84;)V

    new-instance p1, Lyads/mi6;

    invoke-direct {p1}, Lyads/mi6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/we5;->a:Lyads/ve5;

    iput-object p1, p0, Lyads/we5;->b:Lyads/mi6;

    return-void
.end method
