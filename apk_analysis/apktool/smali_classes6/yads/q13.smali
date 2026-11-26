.class public final Lyads/q13;
.super Lyads/s13;
.source "SourceFile"


# instance fields
.field public final a:Lyads/xo2;

.field public final b:Lyads/xo2;


# direct methods
.method public constructor <init>(Lyads/xo2;Lyads/xo2;)V
    .locals 0

    invoke-direct {p0}, Lyads/s13;-><init>()V

    iput-object p1, p0, Lyads/q13;->a:Lyads/xo2;

    iput-object p2, p0, Lyads/q13;->b:Lyads/xo2;

    return-void
.end method


# virtual methods
.method public final a()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/q13;->b:Lyads/xo2;

    return-object p0
.end method

.method public final b()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/q13;->a:Lyads/xo2;

    return-object p0
.end method
