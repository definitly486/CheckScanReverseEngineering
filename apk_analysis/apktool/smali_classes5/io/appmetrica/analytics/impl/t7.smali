.class public final Lio/appmetrica/analytics/impl/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Bn;


# instance fields
.field public final synthetic a:Lr07;


# direct methods
.method public constructor <init>(Lr07;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/t7;->a:Lr07;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Xc;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t7;->a:Lr07;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Xc;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lr07;->b:Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lio/appmetrica/analytics/impl/Xc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/t7;->a(Lio/appmetrica/analytics/impl/Xc;)V

    return-void
.end method
