.class public final synthetic Lhz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhz5;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    iput-object p2, p0, Lhz5;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lhz5;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    iget-object p0, p0, Lhz5;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
