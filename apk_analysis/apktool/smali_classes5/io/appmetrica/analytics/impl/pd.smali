.class public final Lio/appmetrica/analytics/impl/pd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/nd;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/nd;->a:Ljava/lang/String;

    check-cast p2, Lio/appmetrica/analytics/impl/nd;

    iget-object p1, p2, Lio/appmetrica/analytics/impl/nd;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lpp1;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
