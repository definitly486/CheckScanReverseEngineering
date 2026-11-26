.class public final synthetic Lyw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lox4$a;


# instance fields
.field public final synthetic a:Lox4;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lox4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyw4;->a:Lox4;

    iput-object p2, p0, Lyw4;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lyw4;->a:Lox4;

    iget-object p0, p0, Lyw4;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lox4;->r(Ljava/lang/String;)V

    return-void
.end method
