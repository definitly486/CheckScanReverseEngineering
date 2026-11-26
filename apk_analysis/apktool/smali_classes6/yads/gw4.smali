.class public final Lyads/gw4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ly2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/ly2;

    invoke-direct {v0}, Lyads/ly2;-><init>()V

    iput-object v0, p0, Lyads/gw4;->a:Lyads/ly2;

    return-void
.end method


# virtual methods
.method public final a(IZ)Lyads/gw4;
    .locals 1

    iget-object v0, p0, Lyads/gw4;->a:Lyads/ly2;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lyads/ly2;->a(I)Lyads/ly2;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
