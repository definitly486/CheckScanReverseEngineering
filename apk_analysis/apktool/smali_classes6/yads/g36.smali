.class public final Lyads/g36;
.super Lyads/j36;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/bo2;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/j36;-><init>(Lyads/bo2;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
