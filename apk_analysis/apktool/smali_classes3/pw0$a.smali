.class public final Lpw0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu83$a<",
        "[B>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lzz5;Lsy6;)Lu83;
    .locals 0

    check-cast p1, [B

    new-instance p0, Lpw0;

    invoke-direct {p0, p1, p2}, Lpw0;-><init>([BLzz5;)V

    return-object p0
.end method
