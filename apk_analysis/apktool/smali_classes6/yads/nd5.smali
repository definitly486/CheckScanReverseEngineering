.class public final Lyads/nd5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n5;


# instance fields
.field public final a:Lyads/d9;


# direct methods
.method public constructor <init>(Lyads/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nd5;->a:Lyads/d9;

    return-void
.end method


# virtual methods
.method public final a()Lyads/y2;
    .locals 0

    new-instance p0, Lyads/pd5;

    invoke-direct {p0}, Lyads/pd5;-><init>()V

    return-object p0
.end method

.method public final b()Lyads/g9;
    .locals 1

    new-instance v0, Lyads/od5;

    iget-object p0, p0, Lyads/nd5;->a:Lyads/d9;

    invoke-direct {v0, p0}, Lyads/od5;-><init>(Lyads/d9;)V

    return-object v0
.end method
