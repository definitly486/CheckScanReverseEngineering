.class public final Lyads/ch3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ds;


# instance fields
.field public final synthetic a:Lyads/z55;

.field public final synthetic b:Lyads/a65;


# direct methods
.method public constructor <init>(Lyads/z55;Lyads/a65;)V
    .locals 0

    iput-object p1, p0, Lyads/ch3;->a:Lyads/z55;

    iput-object p2, p0, Lyads/ch3;->b:Lyads/a65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lyads/dg0;

    iget-object p0, p0, Lyads/ch3;->a:Lyads/z55;

    invoke-virtual {p0, p1}, Lyads/z55;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lyads/hi6;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/ch3;->b:Lyads/a65;

    invoke-virtual {p0, p1}, Lyads/a65;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
