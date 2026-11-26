.class public final Lu18$c;
.super Lu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1;"
    }
.end annotation


# virtual methods
.method public final p()Lia6;
    .locals 1

    new-instance v0, Lu18$b;

    invoke-direct {v0, p0}, Lu18$b;-><init>(Lu18$c;)V

    return-object v0
.end method
