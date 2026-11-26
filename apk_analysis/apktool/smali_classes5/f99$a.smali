.class public final Lf99$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf99;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf99;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:La99;


# direct methods
.method public constructor <init>(La99;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lf99$a;->a:La99;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/m;Lio/grpc/l$a;)Lio/grpc/l;
    .locals 0

    iget-object p0, p0, Lf99$a;->a:La99;

    invoke-virtual {p1, p0, p2}, Lio/grpc/l$c;->a(La99;Lio/grpc/l$a;)Lio/grpc/l;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lf99$a;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lf99$a;

    iget-object p1, p1, Lf99$a;->a:La99;

    iget-object p0, p0, Lf99$a;->a:La99;

    invoke-virtual {p0, p1}, La99;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lf99$a;->a:La99;

    invoke-virtual {p0}, La99;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf99$a;->a:La99;

    invoke-virtual {p0}, La99;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
