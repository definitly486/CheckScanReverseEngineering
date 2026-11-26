.class public final synthetic Lv5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/le;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/pl;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/pl;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv5a;->a:Lio/appmetrica/analytics/impl/pl;

    iput-object p2, p0, Lv5a;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv5a;->b:Landroid/app/Activity;

    check-cast p1, Lio/appmetrica/analytics/impl/wc;

    iget-object p0, p0, Lv5a;->a:Lio/appmetrica/analytics/impl/pl;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/pl;->b(Landroid/app/Activity;Lio/appmetrica/analytics/impl/wc;)V

    return-void
.end method
