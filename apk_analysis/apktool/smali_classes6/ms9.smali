.class public final synthetic Lms9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/s22;

.field public final synthetic c:Lyads/in5;


# direct methods
.method public synthetic constructor <init>(Lyads/s22;Lyads/in5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms9;->b:Lyads/s22;

    iput-object p2, p0, Lms9;->c:Lyads/in5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lms9;->b:Lyads/s22;

    iget-object p0, p0, Lms9;->c:Lyads/in5;

    invoke-static {p1, p0, v0, v1}, Lyads/d22;->b(Lyads/s22;Lyads/in5;J)Lj59;

    move-result-object p0

    return-object p0
.end method
