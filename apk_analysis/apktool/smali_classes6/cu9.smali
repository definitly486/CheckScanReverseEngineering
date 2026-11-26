.class public final synthetic Lcu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# instance fields
.field public final synthetic a:Lyads/te;

.field public final synthetic b:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lyads/te;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu9;->a:Lyads/te;

    iput-object p2, p0, Lcu9;->b:Lnl3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcu9;->a:Lyads/te;

    iget-object p0, p0, Lcu9;->b:Lnl3;

    invoke-static {v0, p0}, Lyads/e42;->a(Lyads/te;Lnl3;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
