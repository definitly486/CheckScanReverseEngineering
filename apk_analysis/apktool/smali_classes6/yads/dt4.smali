.class public final Lyads/dt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ct4;


# instance fields
.field public final a:Lyads/ov5;

.field public final b:Lyads/mv5;


# direct methods
.method public constructor <init>(Lyads/ov5;Lyads/mv5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dt4;->a:Lyads/ov5;

    iput-object p2, p0, Lyads/dt4;->b:Lyads/mv5;

    return-void
.end method


# virtual methods
.method public final a()Lyads/et4;
    .locals 0

    iget-object p0, p0, Lyads/dt4;->b:Lyads/mv5;

    return-object p0
.end method

.method public final b()Lyads/pv5;
    .locals 0

    iget-object p0, p0, Lyads/dt4;->a:Lyads/ov5;

    return-object p0
.end method
