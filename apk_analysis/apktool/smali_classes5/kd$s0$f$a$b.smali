.class public final Lkd$s0$f$a$b;
.super Lkd$s0$f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$s0$f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const-string v0, "Button_subtask_"

    invoke-static {p2, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkd$s0$f$a;-><init>(ILjava/lang/String;)V

    return-void
.end method
