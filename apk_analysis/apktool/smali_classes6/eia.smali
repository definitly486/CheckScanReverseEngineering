.class public final synthetic Leia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# instance fields
.field public final synthetic a:Lyads/z00;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lyads/z00;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leia;->a:Lyads/z00;

    iput-object p2, p0, Leia;->b:Ljava/lang/String;

    iput-object p3, p0, Leia;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Leia;->b:Ljava/lang/String;

    iget-object v1, p0, Leia;->c:[Ljava/lang/String;

    iget-object p0, p0, Leia;->a:Lyads/z00;

    invoke-static {p0, v0, v1}, Lyads/z00;->a(Lyads/z00;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
