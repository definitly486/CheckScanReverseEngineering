.class public final synthetic Lcs8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcs8;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcs8;->c:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcs8;->b:Ljava/lang/String;

    iget-wide v1, p0, Lcs8;->c:J

    invoke-static {v1, v2, v0}, Landroidx/compose/foundation/text/input/TextFieldStateKt;->a(JLjava/lang/String;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object p0

    return-object p0
.end method
