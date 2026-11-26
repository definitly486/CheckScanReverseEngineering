.class public final Ley4$b;
.super Lu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1;"
    }
.end annotation


# virtual methods
.method public final p()Lia6;
    .locals 1

    new-instance v0, Ley4$a;

    invoke-direct {v0, p0}, Ley4$a;-><init>(Ley4$b;)V

    return-object v0
.end method
