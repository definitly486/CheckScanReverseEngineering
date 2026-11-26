.class public final synthetic Lab6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/posthog/internal/PostHogBatchEvent;Ldb6;Ljava/lang/String;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lab6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lab6;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/work/impl/model/WorkSpecDao_Impl;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lab6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lab6;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lab6;->b:I

    iget-object v1, p0, Lab6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lab6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->S(Ljava/lang/String;Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/posthog/internal/PostHogBatchEvent;

    check-cast v1, Ldb6;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Ldb6;->a:Lta6;

    iget-object v0, v0, Lnb6;->I:Lqb6;

    invoke-interface {v0}, Lqb6;->b()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/posthog/internal/PostHogBatchEvent;->setSentAt(Ljava/util/Date;)V

    iget-object v0, v1, Ldb6;->a:Lta6;

    invoke-virtual {v0}, Lnb6;->b()Lwd6;

    move-result-object v0

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedWriter;

    const/16 v1, 0x2000

    invoke-direct {p1, v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v0, v0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v1, Ldb6$a;

    invoke-direct {v1}, Ldb6$a;-><init>()V

    iget-object v1, v1, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/gson/Gson;->m(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
